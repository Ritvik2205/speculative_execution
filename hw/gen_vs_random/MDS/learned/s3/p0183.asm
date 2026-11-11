.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1640090871
test dl, 27
test al, 22
or al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or dl, cl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
xor dil, 124
xor dil, -5
or ax, -23697
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
