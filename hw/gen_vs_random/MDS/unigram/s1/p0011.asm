.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -7
cmovnp rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or bl, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 65
test bl, bl
or ax, -17790
bts ebx, esi
or dl, -18
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
cmovb rsi, rdx
or edx, 38
bts rdi, 91
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
test rax, 1732677821
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 80
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
and dx, si
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
cmovbe cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
