.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 32
lea rcx, qword ptr [rdx]
add cl, 39 # instrumentation
setle dil
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and al, al
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 69
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
setns al
movzx di, al
add bl, 115 # instrumentation
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
