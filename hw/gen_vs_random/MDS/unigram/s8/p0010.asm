.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rbx, rdx
cmovno rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and cl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
or dl, -89
cmovnb rax, rax
or ecx, 43
xor bx, 74
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
btr esi, edx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xor edx, 94
and dil, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and al, 20 # instrumentation
cmovp cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
