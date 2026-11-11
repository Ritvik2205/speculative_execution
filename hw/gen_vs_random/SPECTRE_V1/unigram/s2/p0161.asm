.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
add bl, 126 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
add cl, 22 # instrumentation
cmovns rbx, rcx
add cl, 63 # instrumentation
cmovl cx, si
add dl, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, 67
setno dil
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
setnbe dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 49
sub eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
setns dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
