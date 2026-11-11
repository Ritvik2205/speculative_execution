.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
lea si, qword ptr [rax + rbx + 92]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
test bl, 45
and dl, bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and dil, al
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
add rdi, 38
lea si, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
add al, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
cmp al, 27
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 55
setnbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
