.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
setp sil
lea edi, qword ptr [rcx + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 44
add edi, ebx
imul dx
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor eax, -764881786
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
