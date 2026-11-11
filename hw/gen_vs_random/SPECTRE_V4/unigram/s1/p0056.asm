.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 95
add sil, 110
cmp dx, 25
test ebx, -595096626
cmovnle ecx, esi
bt ebx, eax
bt eax, 84
bt esi, 227
add di, -74
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and ebx, 81
cmp eax, -92285311
bt eax, edi
test bl, dil
add sil, -75 # instrumentation
adc sil, 9
btc rcx, 14
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
cmovnbe ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 45
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
cmovb rdx, rcx
or dx, cx
cmp rcx, 16
mov rax, -8696242625349627833
xor ebx, 72
cmp di, 59
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add bl, -72
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 38
cmovnz ax, cx
cmovle rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
not dx
xor dl, 65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
add rsi, 86
xchg bx, di
bts eax, eax
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
