.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
cmp eax, -92285311
adc bl, sil
cmovnl rbx, rdx
cmp al, dil
cmp cl, 5
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
cmovl rdx, rax
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
mov al, 6
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
btr cx, di
sbb dl, -99
sub cl, 116
cmovnbe rbx, rsi
cmovnbe rbx, rdx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 2
mul rbx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
cmovle edx, esi
test ebx, -595096626
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
add bl, 65 # instrumentation
cmovnp bx, di
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
sub dil, -10
sub al, 99
add bx, 110
bt eax, 84
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xchg bx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmovl rdi, rdx
adc sil, 12
cmovnbe rsi, rdx
cmovle rbx, rsi
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
add dl, -114 # instrumentation
cmovl cx, ax
add al, 118
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
