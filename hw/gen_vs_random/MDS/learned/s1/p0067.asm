.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
test ecx, -1843375753
bts rdi, 130
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor bl, -88
or rax, -1523798580
and dil, dil
and bl, bl
xor bl, -88
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or al, 24
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or cl, 30
jmp .bb_0.1
.bb_0.1:
xor dil, al
and cl, -6
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
