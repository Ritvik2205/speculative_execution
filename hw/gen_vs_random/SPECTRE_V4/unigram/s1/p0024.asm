.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
sub rcx, rcx
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 92
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 59
cmovb rbx, rbx
mov al, dl
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
mul cx
cmovp rcx, rsi
cmovs bx, dx
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
add cl, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
test rcx, rbx
mov eax, 1596316323
sub rax, 1294268026
or rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
adc rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovbe rcx, rdi
inc esi
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
test eax, ecx
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
cmovl rdx, rsi
cmovbe rsi, rdi
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and dx, bx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
adc cl, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
test edi, -2098143765
test al, al
xor di, 19
cmovl dx, ax
not bx
bts ax, si
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
mov ax, 31802
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
imul di, bx
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
