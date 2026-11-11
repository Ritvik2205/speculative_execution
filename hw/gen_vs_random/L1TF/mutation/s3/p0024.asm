.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -92
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
sub edi, ebx
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
setz al
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
add dl, 27 # instrumentation
setnle dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and dl, 73
and ebx, -52
setb bl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
