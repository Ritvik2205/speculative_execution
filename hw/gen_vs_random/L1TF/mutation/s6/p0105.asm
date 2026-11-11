.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and ebx, -52
sub edi, ebx
setz al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
add dl, 27 # instrumentation
setnle dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
setb bl
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
or dl, -67
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and dl, 73
jmp .bb_0.1
.bb_0.1:
or dl, -67
sbb bl, al
cmovb di, cx
setnp cl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
