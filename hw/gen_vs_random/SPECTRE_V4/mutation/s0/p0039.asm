.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovnb edi, ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and eax, -1948401947
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add al, -1
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl ax, bx
movsx rbx, al
cmp ebx, ecx
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor rax, -98
imul edx, ecx, -116
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, -1070057082
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
xor eax, -1772786275
or ax, -30990
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 135
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
