.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sub al, bl
sbb al, bl
movzx rdi, dl
cmp dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
neg bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
lea ecx, qword ptr [rcx + rsi + 65505]
lea edi, qword ptr [rbx + rax + 42155]
mul rdi
and rbx, rax
jmp .bb_0.2
.bb_0.2:
test dl, 84
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
sbb rbx, -117
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
