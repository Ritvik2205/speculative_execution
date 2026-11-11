.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -76 # instrumentation
adc dl, 84
mul cl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
bts rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 35
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
add ax, dx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
