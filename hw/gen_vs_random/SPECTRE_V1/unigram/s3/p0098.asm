.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 50
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 67
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
or dl, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx]
add dl, 6 # instrumentation
adc rdi, 55
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
add al, -73 # instrumentation
setnbe al
setno al
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
movsx dx, bl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 65
sub eax, -518999763
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
add al, 98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
