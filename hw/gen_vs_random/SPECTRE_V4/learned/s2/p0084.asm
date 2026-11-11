.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, 1802312508
add cl, cl
dec rdi
add bl, -72
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
cmovnle si, cx
test eax, 1880179600
mul rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
cmp cl, 17
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or rdi, rsi
movzx cx, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
cmovnbe rbx, rcx
cmovnp ecx, ebx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmovp rsi, rdi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
test eax, -544019457
and sil, -49
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 45
imul rsi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
