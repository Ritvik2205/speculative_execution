.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rdx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or sil, al
cmovl rbx, rcx
or al, sil
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or rsi, 64
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
xor dl, -125
or al, cl
test dil, -72
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 41
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and cl, 40
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
cmovbe si, cx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 17
xor ecx, 66
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
