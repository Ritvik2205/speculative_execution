.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
sub dl, -34
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
dec ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
bswap rcx
bts cx, 176
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add al, 48 # instrumentation
cmovnz esi, esi
setnle al
or edx, ebx
setnz cl
mov rbx, -813004896564518775
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
