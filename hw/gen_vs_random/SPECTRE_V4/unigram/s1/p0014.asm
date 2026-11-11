.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rcx
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
btc ax, si
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 65
cmovnb edi, eax
xchg edx, edx
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
xor dl, dil
adc rcx, 57
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
imul edx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
add esi, eax
imul dx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmp bx, 113
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
inc edx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovns si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
cmovl cx, dx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
cmovbe rbx, rax
cmovnb ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
btc rdi, rax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
adc bl, al
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and ax, -16777
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
