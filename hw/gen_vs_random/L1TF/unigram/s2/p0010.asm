.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovp dx, ax
and al, bl
cmovb dx, ax
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
test bl, dl
lea edi, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
setno dil
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add cl, dl
cmp eax, 951020724
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
