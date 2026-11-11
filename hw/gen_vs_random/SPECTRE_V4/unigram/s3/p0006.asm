.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
xor edx, 26
adc rdx, rdi
btc rax, rcx
test edi, 2142010790
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
xchg rcx, rax
cmovb ax, si
bt ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
test rsi, rbx
add dl, -59 # instrumentation
movsx ebx, dl
and cl, -118
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
test rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
bt edx, 62
mov bl, 29
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
cmp cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
test esi, -222751961
xor dl, dl
xor ebx, -62
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
add cl, -9
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sub sil, 71
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
cmovle rbx, rdx
add dl, -82
neg eax
add cl, -94 # instrumentation
cmovnle rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sub sil, -35
test dil, al
add al, -63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
dec bx
cmovno rax, rcx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 70
xchg dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
