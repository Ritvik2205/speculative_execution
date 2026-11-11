.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor cl, 88
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor al, 55
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp rdx, rcx
imul ax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovle esi, eax
sbb eax, -920840872
sub cl, 18
movzx edx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts bx, 102
add dl, -91 # instrumentation
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or ax, -26182
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and bl, -30
imul ebx, edi, -24
btr di, 245
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
sbb eax, 1002977021
xor eax, -1772786275
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test dil, -83
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
xor al, -120
xor rax, 1049851782
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
adc si, -74
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
