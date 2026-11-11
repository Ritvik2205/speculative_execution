.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
cmovs rdi, rdx
cmovnz ax, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovle rbx, rax
bswap ecx
add bl, al
adc dl, 31
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
xchg bl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
bt ax, 248
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
test ecx, 860867711
test dl, -125
test edx, -38580719
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
xor ebx, -62
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
movzx di, dil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and bl, -30
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc al, 43
mov ebx, edx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor cl, 13
cmovnz rbx, rcx
cmp sil, cl
and dx, ax
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
not edi
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
btr di, ax
cmp dl, 83
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
add al, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
cmovno rdx, rsi
or ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
