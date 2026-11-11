.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
add dl, 109 # instrumentation
cmovnb rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 17
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
neg rbx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sub bx, si
not bx
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
