.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil 
sbb al, -47 
movzx dx, dl 
xor rdi, rdx 
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi 
lfence
movsx rsi, bl 
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx 
lfence
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx] 
cmovnb ecx, eax 
xor al, 59 
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx 
lfence
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107 
lfence
sbb ax, -19255 
test edx, 573099753 
imul esi, edx, 69 
adc bl, al 
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi] 
sub esi, ebx 
add bl, bl 
cmovo esi, edx 
inc rsi 
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx] 
lfence
cmovnb rdx, rax 
sbb dl, -99 
cmovnbe ebx, eax 
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf di, word ptr [r14 + rdi] 
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al 
lfence
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx 
lfence
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx 
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx 
lfence
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx 
lfence
mul cl 
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi] 
sub ecx, ebx 
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx] 
cmovnbe rbx, rdx 
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5 
lfence
mul rbx 
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx] 
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi 
add rcx, rsi 
add rdi, rdx 
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl 
lfence
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2 
lfence
and rdi, -2 
cmovnp rbx, rdx 
inc edx 
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
