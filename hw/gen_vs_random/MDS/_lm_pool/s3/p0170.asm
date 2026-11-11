.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and ecx, -104
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test rax, 1949278494
xor rax, -270810088
test cl, al
test eax, 158941032
not bl
xor dil, -70
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test bl, -9
or al, dl
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor bl, 67
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
