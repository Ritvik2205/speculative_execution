.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
xor bl, sil
or sil, -49
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
bt esi, eax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
jmp .bb_0.1
.bb_0.1:
or bl, al
xor dl, -43
xor dl, -59
test rdi, 15
xor rsi, -117
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
