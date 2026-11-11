.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
setbe cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test sil, 29
add sil, 42 # instrumentation
lea eax, qword ptr [rsi + rax]
add sil, 65 # instrumentation
cmovo rsi, rcx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, -88
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
lea cx, qword ptr [rdx + rcx + 97]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
