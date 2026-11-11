.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rdx
xor rcx, -2
cmovnle di, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 64
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
or dil, al
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
cmovnbe ebx, ecx
xor rdx, -59
and al, 20 # instrumentation
cmovp cx, ax
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
cmovbe edx, ebx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 55
bt dx, si
bt rbx, rbx
test ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
