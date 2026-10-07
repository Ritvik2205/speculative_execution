.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil 
lfence
sbb al, -47 
lfence
movzx dx, dl 
lfence
xor rdi, rdx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rdx], edi 
lfence
movsx rsi, bl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rax], dx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnle rbx, qword ptr [r14 + rbx] 
lfence
cmovnb ecx, eax 
lfence
xor al, 59 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rcx], rdx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rax], -107 
lfence
sbb ax, -19255 
lfence
test edx, 573099753 
lfence
imul esi, edx, 69 
lfence
adc bl, al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub edi, dword ptr [r14 + rdi] 
lfence
sub esi, ebx 
lfence
add bl, bl 
lfence
cmovo esi, edx 
lfence
inc rsi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rbx] 
lfence
cmovnb rdx, rax 
lfence
sbb dl, -99 
lfence
cmovnbe ebx, eax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf di, word ptr [r14 + rdi] 
lfence
add dl, 48 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rdi], al 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rbx], cx 
lfence
or ebx, 1 # instrumentation
lfence
and edx, ebx # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div ebx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and ecx, 0b111 # instrumentation
lfence
btc dword ptr [r14 + rbx], ecx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rax], bx 
lfence
mul cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or bx, word ptr [r14 + rdi] 
lfence
sub ecx, ebx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rbx] 
lfence
cmovnbe rbx, rdx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rax], 5 
lfence
mul rbx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
movsx esi, word ptr [r14 + rcx] 
lfence
or edi, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv edi 
lfence
add rcx, rsi 
lfence
add rdi, rdx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rsi], dl 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock btr word ptr [r14 + rdi], 2 
lfence
and rdi, -2 
lfence
cmovnp rbx, rdx 
lfence
inc edx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or di, word ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
