.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and dl, -73
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
bts rcx, 28
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor cl, 55
test bl, 65
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
or esi, -110
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
