.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
lea cx, qword ptr [rcx + rdi + 31]
or bl, 63
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmovle cx, cx
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 54
imul rdi, rcx
adc al, -58
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rax
cmp al, 19
movzx eax, ax
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 52
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
sbb cl, 19
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
adc al, 69
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 28
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
xor si, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
movzx eax, dil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
cmovnle rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
movzx ecx, dl
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 20
and ecx, 41
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
