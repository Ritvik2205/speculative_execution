.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
mov rbx, -813004896564518775
or edx, ebx
test si, dx
add al, 48 # instrumentation
cmovnz esi, esi
test dil, -126
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
setnle al
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
setnz cl
lea bx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
