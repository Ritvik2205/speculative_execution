.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor dil, cl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and dl, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, -75
not dil
and al, bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 17
xor bx, 49
jmp .bb_0.2
.bb_0.2:
or al, -22
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
