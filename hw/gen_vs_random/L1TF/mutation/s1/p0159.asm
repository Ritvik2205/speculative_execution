.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 121 # instrumentation
setnb bl
setnbe dl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
xor bl, dl
cmovl cx, dx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovl ecx, edi
sbb rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
adc bl, -14
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or dl, dl
sub cl, -49
lea rdx, qword ptr [rcx]
btc edx, edi
cwd
lea edi, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
lea rdi, qword ptr [rbx + rdi + 45901]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
sub ax, -27107
cmovnbe rdx, rbx
bt dx, 132
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
