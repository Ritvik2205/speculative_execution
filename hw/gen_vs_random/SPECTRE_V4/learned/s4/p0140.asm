.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
xchg dx, di
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
sub eax, 2030845821
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
bts rbx, rdi
btr dx, cx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
add rcx, rdi
and dil, al
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and eax, -24
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
add cl, -82 # instrumentation
sbb si, dx
cmovnle eax, edi
btr bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
adc al, al
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
bt edi, 26
sub rsi, 26
test bl, bl
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
test bl, 0
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
xor edx, eax
movsx rsi, bx
or dl, al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
