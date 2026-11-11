.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
test eax, -385619864
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
lea rcx, qword ptr [rax + rdx + 60461]
cmovo dx, cx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
add dl, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
imul rdi, rcx
adc al, -3
test rax, -991273825
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
