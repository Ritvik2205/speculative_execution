.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or dl, bl
xor dil, -70
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
test rax, rdx
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and cl, -19
bt rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and dl, 120 # instrumentation
cmovnle bx, si
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
cmovnle ebx, edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
cmovl ebx, eax
and edx, -44
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
bt eax, 151
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
