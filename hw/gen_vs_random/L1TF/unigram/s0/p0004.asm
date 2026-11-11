.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and al, -68
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
lea bx, qword ptr [rdx + rax]
setb al
mov bl, 35
lea rbx, qword ptr [rax + rcx]
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
or cl, 105
xor rdi, rax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
lea ebx, qword ptr [rax + rax + 56]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
