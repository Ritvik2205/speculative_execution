.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
adc al, -6
bt rax, rsi
mov edi, esi
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
inc rcx
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
add al, -84 # instrumentation
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
