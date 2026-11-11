.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
add cl, 88
test al, dl
sbb edx, 23
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add al, 48 # instrumentation
cmovnz ebx, ebx
cmovl rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 69 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
dec bx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rdx, 88
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
lea edi, qword ptr [rdi + rsi + 65]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
