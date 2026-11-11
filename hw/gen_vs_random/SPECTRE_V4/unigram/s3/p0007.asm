.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rbx
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 49
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovp si, di
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 66
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
add rax, rdi
cmovnp rsi, rbx
add cl, 41
and ecx, 36
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
movzx rbx, di
sub ecx, edx
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
test rdi, -1876639003
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 19
imul ax, si
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and bl, 26
sbb dl, -99
imul ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
btc rdi, rax
cmovnb rbx, rax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 65
cmovnp ecx, eax
cmovnbe ax, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 100
xor bl, 93
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1
sbb di, -76
btc rbx, rcx
sub edx, 44
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 69
xchg bl, bl
sbb rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
bt ax, 92
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 36
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
