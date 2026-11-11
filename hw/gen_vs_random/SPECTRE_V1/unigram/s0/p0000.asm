.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rdi + 62]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 54
add eax, -1265007362
add dl, -127 # instrumentation
movzx edx, al
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
mul dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 54
sets bl
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
