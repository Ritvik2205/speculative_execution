.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
sbb dx, 2
cmovo esi, eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
add dl, -59 # instrumentation
movsx esi, dl
cmp dx, 58
bt si, 114
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
mul dx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sub eax, -672265139
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xchg dx, di
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
add dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
cmovb edi, eax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 66
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 90
sub di, di
btc rbx, 52
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
cmp ax, -22704
add al, -44
cmovno rdx, rdi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
imul esi, eax, 5
btr dx, si
movsx rdi, al
cmovnp esi, ecx
bt rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
