.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, di
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
xor sil, -15
jmp .bb_0.2
.bb_0.2:
and al, dil
jmp .bb_0.3
.bb_0.3:
or al, al
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
jmp .bb_0.4
.bb_0.4:
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
test dl, -119
test rdi, 63
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
