.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
setnz cl
lea bx, qword ptr [rax]
add al, 48 # instrumentation
cmovnz esi, esi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test dil, -126
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
mov rbx, -813004896564518775
test si, dx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
