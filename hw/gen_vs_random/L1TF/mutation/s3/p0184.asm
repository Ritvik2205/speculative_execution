.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
cmp ax, 2764
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
btc bx, 168
add cx, 59
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnle edx, ebx
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor ax, -27503
mov al, -102
setno al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
xor cl, dl
test eax, 1939511779
or dl, dl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
cmovno esi, esi
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
cmovnz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
add rax, -1969014465
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
