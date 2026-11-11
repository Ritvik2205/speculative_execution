.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
bts rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and dil, cl
test al, dil
and cl, 79
or sil, dil
or rbx, -77
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor bl, -88
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or sil, dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
