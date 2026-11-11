.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
jmp .bb_0.1
.bb_0.1:
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and ecx, -104
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
btc si, 99
xor dl, al
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
