.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, 1263899340
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
mov rsi, 93
dec edx
and bl, sil
dec dl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
sbb sil, 108
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
btc bx, 47
mov rcx, rdx
neg rbx
xor ecx, 96
sub rax, -701741274
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, ecx
sbb dil, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cmovp eax, eax
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
sbb al, sil
bt ebx, esi
and dx, 1
cmp dil, al
sub edi, 17
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
sbb rbx, 62
inc rcx
add dx, -90
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
btc dx, 119
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 71
or eax, 2007177863
test edx, 573099753
cmovle rbx, rdi
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 95
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
add bx, 110
inc ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
