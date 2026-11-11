.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and dl, dl
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
add si, 81
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
sbb si, 15
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
test rdx, -1074289902
test eax, -651442446
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
cmovb bx, di
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 89
btc eax, ecx
or cl, 1 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb bx, 87
bts di, 30
cmp edx, edx
adc al, bl
adc cl, cl
add cl, -123 # instrumentation
sbb bl, 59
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmovno rcx, rax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
btr eax, 45
add al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
bts di, 30
cmovnz rdx, rcx
test al, 52
btr ecx, 93
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
adc al, 41
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
cmp ecx, 11
cmovp rax, rsi
cmovnb ecx, edi
btr ax, bx
adc edi, -83
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
movzx edx, bl
cmovo dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
