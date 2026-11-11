.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rbx + 10762]
setnl dl
lea rsi, qword ptr [rdx + rcx + 57579]
cmp al, 53
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdx]
cmovbe rsi, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
jmp .bb_0.2
.bb_0.2:
add dl, 58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
xor cl, -91
xchg dl, al
sbb eax, -417098439
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
