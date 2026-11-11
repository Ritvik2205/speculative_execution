.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rbx, dx
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 76
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
adc al, 43
sub dl, bl
imul ecx, esi, 9
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
test rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
sub cl, dil
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
sub rax, 120
sub ebx, ecx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
sub rax, -1066968986
cmovo bx, cx
cmovnb ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
imul dil
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
or dl, 1 # instrumentation
neg ecx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
btr di, 245
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
bt rdi, rdi
bts rsi, 236
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
add dl, -8
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xchg rdi, rax
or dx, 49
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], dx
or dil, -104
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 98
add dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
