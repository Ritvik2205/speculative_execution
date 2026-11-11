.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rax
adc rax, 253624080
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 20
cmovl rcx, rax
imul rbx, rbx, 55
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and ebx, -4
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
btr dx, bx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 84
cmovno ebx, ecx
cmp rsi, 74
or al, al
cmovnz rcx, rcx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 35
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
or rax, rdi
cmp rcx, -121
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
movsx dx, dl
bt eax, 103
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
sbb dil, 68
imul edx, edi, 22
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add cx, 25
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
dec al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 100
dec rcx
add rdx, 74
and dil, al
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 57
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and al, cl
sub rcx, -99
or cl, 83
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
