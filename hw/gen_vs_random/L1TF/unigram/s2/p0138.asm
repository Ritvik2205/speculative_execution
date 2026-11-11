.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, eax
sub dx, 6
mov si, cx
xor sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
sbb rax, 717206440
cmovb rax, rsi
lea rbx, qword ptr [rcx + rdi]
xor dl, cl
cmovnbe si, di
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], eax
test rdx, rdi
or ax, 10
lea ax, qword ptr [rax + rdx]
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
