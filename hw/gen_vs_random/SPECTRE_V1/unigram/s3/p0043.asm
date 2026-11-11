.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 97
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
test rsi, 61
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rsi, rbx
add dl, -73 # instrumentation
setnbe dl
or dl, 1 # instrumentation
add dl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
add al, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
