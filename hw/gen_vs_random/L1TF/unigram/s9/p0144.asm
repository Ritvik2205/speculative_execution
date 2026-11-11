.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add dl, 12 # instrumentation
cmovnb edi, edx
not rcx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov rbx, -813004896564518775
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 96
sub edi, 56
inc bx
xor cl, cl
sub dil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
