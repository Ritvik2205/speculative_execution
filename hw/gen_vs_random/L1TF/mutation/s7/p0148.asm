.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
add dl, 27 # instrumentation
setnle dl
and dl, 73
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
and ebx, 108
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
setb bl
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
or dl, 8
sub edi, ebx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
setz al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
