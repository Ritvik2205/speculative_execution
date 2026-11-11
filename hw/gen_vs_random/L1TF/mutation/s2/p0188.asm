.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
add bl, bl
test rax, -991273825
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
jmp .bb_0.1
.bb_0.1:
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc rax, -457629677
lea ecx, qword ptr [rcx]
lea ax, qword ptr [rsi + rcx + 40317]
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
bt di, di
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
cmovs ecx, ebx
or rcx, -10
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and bl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
xchg dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
