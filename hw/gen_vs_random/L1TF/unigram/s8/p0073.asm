.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
xchg esi, ebx
cmp edx, 99
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
cmp sil, dl
setb bl
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
imul sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 96
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
test eax, -2032743474
cmp bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
