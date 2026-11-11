.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
cmovnl edx, ebx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
test al, 22
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
cmovnle rax, rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
xor esi, 70
jmp .bb_0.1
.bb_0.1:
xor rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor rsi, -117
xor bl, -88
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
